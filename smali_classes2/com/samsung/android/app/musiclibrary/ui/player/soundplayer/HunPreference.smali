.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hun_pref"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a:Landroid/content/SharedPreferences;

    .line 24
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
