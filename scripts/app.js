connectToMetaMask = async () => {
  let accounts = await ethereum.request({ method: "eth_requestAccounts" });
  alert(`Connected to ${accounts[0]}!`);
};
