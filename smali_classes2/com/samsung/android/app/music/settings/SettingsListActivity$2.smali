.class Lcom/samsung/android/app/music/settings/SettingsListActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->a()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->a(I)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(IZ)V

    :cond_0
    return-void
.end method
