.class public final Lcom/samsung/android/app/music/provider/ContentValuesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;J)J
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method
