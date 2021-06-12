.class public final Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V
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

.field final synthetic b:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

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

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_2

    .line 71
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->f(Landroid/support/v4/app/Fragment;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2
    :goto_0
    return-void
.end method
