document.addEventListener('DOMContentLoaded', function () {
    // Gọi hàm để thực hiện POST request khi trang đã tải hoàn toàn
    // sendPostRequest();
    document.getElementById('btn_search_product').addEventListener('click', sendProductID);
});
// const result_search = document.getElementById('result_search');
// console.log(result_search)
function sendProductID() {
    const url = '/ajax.php';
    const productID = document.getElementById('productID').value;
    const result_search = document.getElementById('result_search')
    result_search.innerHTML = ``
    const data = {
        productID: productID
    };
    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    };
    // ...

    fetch(url, options)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(result => {
            // Xử lý dữ liệu thành công
            console.log('Server response:', result);

            // Kiểm tra xem có lỗi từ server không
            if (result.error) {
                throw new Error(result.error);
            }

            // Xử lý dữ liệu khác ở đây
            let output = '';
            for (let i in result) {
                output += `
                <tr>
                    <td>${result[i].productsid}</td>
                    <td><img src="${result[i].urlProduct}" alt="${result[i].urlProduct}" width="500" height="600"></td>
                </tr>
            `;
            }
            result_search.innerHTML = output;
        })
        .catch(error => {
            // Xử lý lỗi
            console.error('Error:', error.message);
            // Hiển thị thông báo lỗi cho người dùng, ví dụ:
            result_search.innerHTML = `${error.message}`
        });
}
