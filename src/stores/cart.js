import { ref } from 'vue'
import { defineStore } from 'pinia'
import { getCart } from '@/service/cart'
export const useCartStore = defineStore('cart', () => {
  const count = ref(0)
  async function updateCart() {
    //const { data = [] } = await getCart()
    //if (data !=null){
    //  count.value = data.length
    //}
  }

  return { count, updateCart }
})
