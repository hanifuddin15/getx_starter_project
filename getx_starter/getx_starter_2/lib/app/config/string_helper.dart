class StringHelper {
  static String obfuscateEmail(String email) {
    // Split the email into parts before and after the '@' symbol
    final parts = email.split('@');
    if (parts.length != 2) return email; // If not a valid email, return as is

    final name = parts[0];
    final domain = parts[1];

    // Replace part of the name with '*'
    final obfuscatedName = name.length > 2
        ? name.substring(0, 2) + '*' * (name.length - 2)
        : '*' * name.length;

    // Return the obfuscated email
    return '$obfuscatedName@$domain';
  }
}
