import { Box, Typography, Link } from "@mui/material";

export default function Footer() {
  return (
    <Box sx={{ bgcolor: "background.paper", p: 6 }} component="footer">
      <Typography
        variant="subtitle1"
        align="center"
        color="text.secondary"
        component="p"
      >
        Companion demo app for Phrase blog article
      </Typography>

      <Typography variant="body2" color="text.secondary" align="center">
        {"Copyright © "}
        <Link color="inherit" href="https://phrase.com/">
          Phrase
        </Link>{" "}
        {new Date().getFullYear()}
      </Typography>
    </Box>
  );
}
