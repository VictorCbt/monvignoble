const addInvestmentInFavori = () => {
  const groupId = document.querySelector('#group-id')
  if (groupId) {
    const investmentSelected = document.querySelectorAll('.card-top')
    investmentSelected.forEach((investment) => {
      investment.querySelector('.favori').addEventListener("click", (event) => {
        var url = `/groups/${groupId}/set_favori`
        fetch(url, {
          method: 'GET',
          headers: {"Content-Type": "application/json" },
        })
        console.log(url)
      });
    })
  }
}

export { addInvestmentInFavori };
