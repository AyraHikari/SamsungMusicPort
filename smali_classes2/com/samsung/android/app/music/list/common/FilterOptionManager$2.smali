.class public final Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/FilterOptionManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const v1, 0x7f0b00f7

    if-eq p2, v1, :cond_2

    const v1, 0x7f0b04c3

    if-eq p2, v1, :cond_1

    const v1, 0x7f0b04fd

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please check "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " res is matched with FilterOption entry."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_0
    const/16 v1, 0xe

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xc

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_3
    const/16 v1, 0xd

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_7
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_8
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_b
    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    .line 69
    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->b:Landroid/content/Context;

    const v1, 0x7f0b0396

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->c(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/SpinnerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->b()Landroid/view/View;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->c(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/SpinnerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/SpinnerHelper;->b()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->e(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;->a(Landroid/content/SharedPreferences;I)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s_()V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;->a:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->a(I)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0397
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b03a1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
