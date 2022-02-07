import {
  AppBar,
  Toolbar,
  Typography,
  Button,
  Stack,
  Box,
  IconButton,
} from "@mui/material";
import {
  Star as StarIcon,
  Search as SearchIcon,
  ShoppingCart as CartIcon,
  AccountCircle as AccountIcon,
} from "@mui/icons-material";
import { useTranslation } from "react-i18next";

const startMenuItems = {
  featured: <StarIcon />,
  search: <SearchIcon />,
};
const endMenuItems = {
  account: <AccountIcon />,
  cart: <CartIcon />,
};

export default function NavBar() {
  const { t } = useTranslation();

  return (
    <AppBar position="fixed" elevation={0}>
      <Toolbar>
        <Typography variant="h6" color="inherit" noWrap>
          {t("appTitle")}
        </Typography>

        <Stack direction="row" spacing={2} sx={{ flexGrow: 1, pl: 4 }}>
          {Object.keys(startMenuItems).map((mi) => (
            <Button
              key={mi}
              variant="text"
              sx={{ color: "#fff" }}
              startIcon={startMenuItems[mi]}
            >
              {t(mi)}
            </Button>
          ))}
        </Stack>

        <Box
          sx={{ display: "flex", flexGrow: 0, flexDirection: "row-reverse" }}
        >
          {Object.keys(endMenuItems).map((mi) => (
            <IconButton
              key={mi}
              aria-label={t(mi)}
              title={t(mi)}
              sx={{ color: "#fff" }}
            >
              {endMenuItems[mi]}
            </IconButton>
          ))}
        </Box>
      </Toolbar>
    </AppBar>
  );
}
