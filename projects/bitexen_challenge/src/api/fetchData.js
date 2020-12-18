import axios from 'axios';
import urls from './urls'


 const fetchData = () => {
	return axios.create({
		baseURL : urls.baseUrl,
	});
}

export default fetchData;