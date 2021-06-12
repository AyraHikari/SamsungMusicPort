.class public final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    .line 33
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    iget-object p2, p2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->a()Landroid/transition/Transition;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
