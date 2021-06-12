.class Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;->a:Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f100109

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;->a:Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;I)I

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;->a:Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;->a:Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;

    .line 64
    invoke-virtual {v2}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;->a:Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    return-void
.end method
