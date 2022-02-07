import * as React from "react";
import CssBaseline from "@mui/material/CssBaseline";
import Container from "@mui/material/Container";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import { deepOrange, grey } from "@mui/material/colors";
import NavBar from "./layout/NavBar";
import Footer from "./layout/Footer";
import FeaturedCreatorCards from "./features/Creators/FeaturedCreatorCards";

const theme = createTheme({
  palette: {
    primary: {
      main: deepOrange[600],
    },
    background: {
      paper: grey[50],
    },
  },
  typography: {
    fontFamily:
      '-apple-system, BlinkMacSystemFont, "Segoe UI", "Roboto", "Oxygen", "Ubuntu", "Helvetica Neue", Arial, sans-serif',
  },
});

export default function App() {
  return (
    <ThemeProvider theme={theme}>
      <CssBaseline />

      <NavBar />

      <main>
        <Container sx={{ py: 8 }} maxWidth="md">
          <FeaturedCreatorCards />
        </Container>
      </main>

      <Footer />
    </ThemeProvider>
  );
}
