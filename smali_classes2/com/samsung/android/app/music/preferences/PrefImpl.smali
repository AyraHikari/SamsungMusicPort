.class public Lcom/samsung/android/app/music/preferences/PrefImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/preferences/IPrefImpl;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;I)I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;J)J
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preferences/PrefImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
