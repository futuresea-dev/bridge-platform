const FaqAccordion = () => {
  const accordionItems = [
    {
      "id": "1",
      "question": "What Are the Benefits of Studying Abroad?",
      "answer": "Studying abroad offers cultural enrichment, unique academic opportunities, improved career prospects, personal growth, and the chance to build an international network."
    },
    {
      "id": "2",
      "question": "How do I choose a study abroad destination?",
      "answer": "Consider factors such as your academic goals, language preferences, budget, safety, and cultural interests. Our advisors can help you find the right fit for your needs."
    },
    {
      "id": "3",
      "question": "What types of programs do you offer?",
      "answer": "We offer a variety of programs including Summer Camps, Bachelor’s, Master’s, PhD and Language Courses across multiple countries."
    },
    {
      "id": "4",
      "question": "How do I choose the right study abroad program?",
      "answer": "Consider factors such as your academic goals, preferred location, language of instruction, lifestyle preferences, and financial considerations. Research universities, programs, and living conditions to find the best fit."
    },
    {
      "id": "5",
      "question": "What is the application process for studying abroad?",
      "answer": "The process typically involves selecting a program, researching admission requirements, preparing necessary documents, submitting applications, and meeting deadlines. Each institution may have specific steps, so we check their guidelines carefully."
    },
    {
      "id": "6",
      "question": "What are the costs associated with studying abroad?",
      "answer": "Costs vary by destination and program type, but typically include tuition, accommodation, travel, insurance, and living expenses. We provide detailed cost breakdowns for each program."
    },
    {
      "id": "7",
      "question": "How Long Do Study Abroad Programs take?",
      "answer": "The duration of studying abroad varies by program and degree level. Typically, an undergraduate degree takes three to four years (three years in the UK and four in the US), a master’s degree takes one to two years, and a PhD usually requires three to four years."
    },
    {
      "id": "8",
      "question": "What Are the Entry Requirements for Study Abroad programs?",
      "answer": "Entry requirements vary by country and institution but usually include academic qualifications, proof of language proficiency, and sometimes-standardized test scores. Always verify specific requirements with your chosen universities."
    },
    {
      "id": "9",
      "question": "Are scholarships or financial aid available?",
      "answer": "Yes, we offer information on various scholarships and partial discounts. Be sure to contact us for updates on available opportunities."
    },
    {
      "id": "10",
      "question": "What should I do if I have more questions or need assistance?",
      "answer": "Contact us directly through our website, email, or phone. We are here to help with any questions or concerns you may have about your study abroad experience."
    }
  ];

  return (
    <div className="accordion accordion-style-four" id="accordionOne">
      {accordionItems.map((item, index) => (
        <div className="accordion-item" key={item.id}>
          <div className="accordion-header" id={`heading-${index}`}>
            <button
              className={`accordion-button ${index === 2 ? "" : "collapsed"}`}
              type="button"
              data-bs-toggle="collapse"
              data-bs-target={`#collapse-${index}`}
              aria-expanded={index === 2 ? "true" : "false"}
              aria-controls={`collapse-${index}`}
            >
              <span>{`0${index + 1}.`}</span> {item.question}
            </button>
          </div>
          <div
            id={`collapse-${index}`}
            className={`accordion-collapse collapse ${
              index === 2 ? "show" : ""
            }`}
            aria-labelledby={`heading-${index}`}
            data-bs-parent="#accordionOne"
          >
            <div className="accordion-body">
              <p>{item.answer}</p>
            </div>
          </div>
        </div>
      ))}
    </div>
  );
};

export default FaqAccordion;
