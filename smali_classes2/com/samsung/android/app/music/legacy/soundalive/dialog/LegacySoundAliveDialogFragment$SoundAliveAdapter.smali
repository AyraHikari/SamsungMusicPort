.class Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundAliveAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 181
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;->a(I)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 183
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 186
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-object p2
.end method
