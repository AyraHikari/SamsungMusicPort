.class public final Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public showButtonBackground(Z)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getShowButtonIds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 265
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 97
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewStub;

    if-nez v3, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 267
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    .line 102
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    return-void
.end method
