public static Integer calculateDirectorySize(Map<String, Object> directory) {
    if (directory == null || directory.isEmpty()) {
        return 0;
    }

    Integer total = 0;

    for (Object entry : directory.values()) {
        if (entry instanceof Integer) {
            total += (Integer) entry;
        } else if (entry instanceof Map<String, Object>) {
            total += calculateDirectorySize((Map<String, Object>) entry);
        }
    }

    return total;
}
