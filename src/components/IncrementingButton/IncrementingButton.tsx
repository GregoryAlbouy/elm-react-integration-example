import { useState } from "react";

export const IncrementingButton = () => {
  const [count, setCount] = useState(0);

  const incrementCount = () => {
    setCount((previousCount) => previousCount + 1);
  };

  return <button onClick={incrementCount}>Clicked {count} times</button>;
};
