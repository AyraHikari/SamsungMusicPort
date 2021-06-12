.class Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

.field private final b:[Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    .line 215
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 211
    iput p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->c:I

    .line 216
    iput-object p4, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->c:I

    return v0
.end method

.method a(I)V
    .locals 1

    .line 247
    iget v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 250
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->c:I

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0400e9

    .line 224
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f13015f

    .line 226
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 227
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f100607

    .line 229
    iget v2, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 230
    iget v1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->c:I

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    .line 233
    invoke-virtual {v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 232
    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq p3, v1, :cond_2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne p3, v1, :cond_4

    :cond_2
    const p3, 0x7f130317

    .line 238
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 239
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    .line 240
    invoke-static {v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->c(Lcom/samsung/android/app/music/settings/SettingsListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    .line 239
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    return-object p2
.end method
