.class public final Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 32
    :goto_0
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)V
    .locals 2

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "key_theme"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final b()I
    .locals 3

    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "key_theme"

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/Theme;->a:Lcom/samsung/android/app/musiclibrary/ui/Theme;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/Theme;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
