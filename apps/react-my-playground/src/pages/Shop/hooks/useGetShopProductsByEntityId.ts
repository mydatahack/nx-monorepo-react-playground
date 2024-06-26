import { useGetProductsByIdsQuery } from '../graphql/experimenting/GetProductsByIds.generated'

export const useGetShopProductsByEntityIds = () => {
  const { data } = useGetProductsByIdsQuery({
    variables: { entityIds: [114, 117] },
  })

  const products = data?.site?.products?.edges || []

  console.log(JSON.stringify(products))

  return { products }
}
