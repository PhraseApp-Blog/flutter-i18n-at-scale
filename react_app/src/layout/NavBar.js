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

const startMenuItems = {
  featured: <StarIcon />,
  search: <SearchIcon />,
};
const endMenuItems = {
  account: <AccountIcon />,
  cart: <CartIcon />,
};

export default function NavBar() {
  return (
    <AppBar position="fixed" elevation={0}>
      <Toolbar>
        <Typography variant="h6" color="inherit" noWrap>
          HandiRaft
        </Typography>

        <Stack direction="row" spacing={2} sx={{ flexGrow: 1, pl: 4 }}>
          {Object.keys(startMenuItems).map((mi) => (
            <Button
              key={mi}
              variant="text"
              sx={{ color: "#fff" }}
              startIcon={startMenuItems[mi]}
            >
              {mi}
            </Button>
          ))}
        </Stack>

        <Box
          sx={{ display: "flex", flexGrow: 0, flexDirection: "row-reverse" }}
        >
          {Object.keys(endMenuItems).map((mi) => (
            <IconButton
              key={mi}
              aria-label={mi}
              title={mi}
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
