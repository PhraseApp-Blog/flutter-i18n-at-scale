import { Grid, Typography } from "@mui/material";
import CreatorCard from "./CreatorCard";

const creators = [
  {
    name: "Hala Mahmoud",
    avatarImage: "lorem-face-6536.jpg",
    productImage1: "/img/asiya-kiev-gUzOZaswagA-unsplash.jpg",
    productImage2: "/img/jacob-bentzinger-USy_fK9s9hA-unsplash.jpg",
    specialties: ["Moroccan leather", "Belts", "Wallets"],
  },
  {
    name: "Daniel Garcia",
    avatarImage: "lorem-face-4343.jpg",
    productImage1: "/img/max-bohme-ND477oBF3i4-unsplash.jpg",
    productImage2: "/img/thomas-john-9dZAGDv-FxU-unsplash.jpg",
    specialties: [
      "Mexican Day of the Dead (Día de Muertos) sculptures",
      "Ceramic sculptures",
    ],
  },
  {
    name: "Mary Shayk",
    avatarImage: "lorem-face-4999.jpg",
    productImage1: "/img/eugenia-romanova-cJnwJxXABiY-unsplash.jpg",
    productImage2: "/img/denis-kirichkov-5h12h1Vwzr0-unsplash.jpg",
    specialties: ["Wooden Art", "Intricate woodworking", "Facades"],
  },
  {
    name: "Rui Yang",
    avatarImage: "lorem-face-1140.jpg",
    productImage1: "/img/jay-huang-7c4lkKgnOko-unsplash.jpg",
    productImage2: "/img/pille-r-priske-z_MwDqdYFLU-unsplash.jpg",
    specialties: ["Chinese teapots", "Woodworking", "Reusable household items"],
  },
  {
    name: "Loyiso Zuma",
    avatarImage: "lorem-face-2187.jpg",
    productImage1:
      "https://source.unsplash.com/random/200x200/?african,fashion",
    productImage2:
      "https://source.unsplash.com/random/200x200/?african,women,fashion",
    specialties: ["African fashion", "Women's fashion"],
  },
  {
    name: "Elizabeth Brenton",
    avatarImage: "lorem-face-2951.jpg",
    productImage1: "https://source.unsplash.com/random/200x200/?woodworking",
    productImage2: "https://source.unsplash.com/random/200x200/?metalworking",
    specialties: ["Nova Scotian woodworking", "Metalworking"],
  },
];

export default function FeaturedCreatorCards() {
  return (
    <>
      <Typography
        variant="h4"
        component="h2"
        sx={{ textAlign: "center", mb: 2 }}
      >
        Featured Creators
      </Typography>

      <Grid container spacing={2}>
        {creators.map((creator) => (
          <Grid item key={creator.name} xs={12} sm={6} md={4}>
            <CreatorCard {...creator} />
          </Grid>
        ))}
      </Grid>
    </>
  );
}
