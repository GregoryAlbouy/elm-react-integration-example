import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import { IncrementingButton } from "./IncrementingButton";

describe("IncrementingButton", () => {
  test("initial state is 0", () => {
    render(<IncrementingButton />);

    const button = screen.getByRole("button");

    expect(button).toHaveTextContent("Clicked 0 times");
  });

  test("increments count on click", () => {
    render(<IncrementingButton />);

    const button = screen.getByRole("button");
    userEvent.click(button);
    userEvent.click(button);

    expect(button).toHaveTextContent("Clicked 2 times");
  });
});
