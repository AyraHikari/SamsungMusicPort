.class public final Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;
.super Lcom/samsung/android/app/music/activity/h;
.source "CurrentPlaylistSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;,
        Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;
    }
.end annotation


# static fields
.field public static final d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

.field public static final e:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final f:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    .line 1
    sget-object v0, Lkotlin/i;->c:Lkotlin/i;

    sget-object v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$b;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$b;

    invoke-static {v0, v1}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->e:Lkotlin/g;

    .line 2
    sget-object v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$a;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$a;

    invoke-static {v0, v1}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->f:Lkotlin/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/h;-><init>()V

    return-void
.end method

.method public static final synthetic A()Lkotlin/g;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->e:Lkotlin/g;

    return-object v0
.end method

.method public static final E(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$settingsType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->F(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->F(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->F(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04a7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic y(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->E(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic z()Lkotlin/g;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->f:Lkotlin/g;

    return-object v0
.end method


# virtual methods
.method public final B(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b04a7

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->C(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V

    const v0, 0x7f0b04a8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->C(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f0b04a9

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/l;

    invoke-virtual {p3}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->C(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0b04ac

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final C(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100fb

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x1010074

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance v0, Lcom/samsung/android/app/music/settings/c;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/settings/c;-><init>(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b03b7

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final F(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/settings/r;->s(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;I)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->K(Landroid/view/View;I)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/l;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->G(Z)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/l;

    invoke-virtual {v0}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/settings/r;->p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;I)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->K(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public final G(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->c:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const v2, 0x7f0b04a7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->I(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    const v2, 0x7f0b04a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->I(Landroid/view/View;Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const v1, 0x7f0b04a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->I(Landroid/view/View;Z)V

    return-void
.end method

.method public final I(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0b04b5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    const v0, 0x7f0b03b7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final J()V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/r;->f(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    sget-object v2, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->b()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4
    check-cast v5, Lkotlin/l;

    .line 5
    invoke-virtual {v5}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    .line 6
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->K(Landroid/view/View;I)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    .line 8
    sget-object v2, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->a()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Lkotlin/l;

    .line 11
    invoke-virtual {v5}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/app/music/settings/r;->b(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;)I

    move-result v8

    if-ne v5, v8, :cond_3

    move v5, v7

    goto :goto_4

    :cond_3
    move v5, v3

    :goto_4
    if-eqz v5, :cond_4

    move v6, v4

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 12
    :cond_5
    :goto_5
    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->K(Landroid/view/View;I)V

    if-eqz v0, :cond_6

    move v3, v7

    .line 13
    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->G(Z)V

    return-void
.end method

.method public final K(Landroid/view/View;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b04a7

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04b5

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f0b04a8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/RadioButton;

    if-ne p2, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f0b04a9

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0029

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/h;->setContentView(I)V

    .line 3
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;-><init>(Landroidx/appcompat/app/f;)V

    const v0, 0x7f0e0086

    .line 4
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;->g(I)V

    const v0, 0x7f1300e3

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.current_playlist_settings)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;->h(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Lcom/samsung/android/app/music/settings/e;

    const v0, 0x7f0b01f8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.extended_content)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/settings/e;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    const p1, 0x7f0b03d8

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    const p1, 0x7f0b0060

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    const p1, 0x7f0b0061

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->c:Landroid/view/View;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;

    sget-object v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->B(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    sget-object v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;->b:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$c;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->B(Landroid/view/View;Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$d;Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->J()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->J()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/h;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/a;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/a;

    move-result-object v0

    const-string v1, "setting_current_playlist"

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/a;->g(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
