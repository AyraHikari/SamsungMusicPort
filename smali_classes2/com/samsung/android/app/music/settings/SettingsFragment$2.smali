.class Lcom/samsung/android/app/music/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$2;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "favorite"

    .line 1078
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1079
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$2;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1080
    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f02033c

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1081
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$2;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1082
    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10084b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1083
    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1084
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$2;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1085
    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02c7

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 1084
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1

    :cond_0
    return-object v0
.end method
