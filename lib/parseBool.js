export default (x) => {
  return x && !['0', 'false', 'off'].includes(x.trim().toLowerCase());
};
