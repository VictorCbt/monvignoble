const investmentSelected = document.querySelectorAll('.card-top')
const groupId = document.querySelector('#group-id').dataset.groupId
console.log(groupId)

const addInvestmentInFavori = () => {
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

export { addInvestmentInFavori };
