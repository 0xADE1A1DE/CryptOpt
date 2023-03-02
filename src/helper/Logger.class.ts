export default class Logger {
  public static log<T>(e: T): T | undefined {
    console.log(e);
    return e;
  }
}
