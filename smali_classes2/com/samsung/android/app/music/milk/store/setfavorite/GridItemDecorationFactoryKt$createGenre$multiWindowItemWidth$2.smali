.class final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $dexItemMinWidth:Lkotlin/Lazy;

.field final synthetic $dexItemMinWidth$metadata:Lkotlin/reflect/KProperty;

.field final synthetic $isPhone:Z

.field final synthetic $itemWidth:Lkotlin/Lazy;

.field final synthetic $itemWidth$metadata:Lkotlin/reflect/KProperty;


# direct methods
.method constructor <init>(ZLkotlin/Lazy;Lkotlin/reflect/KProperty;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$isPhone:Z

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$itemWidth:Lkotlin/Lazy;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$itemWidth$metadata:Lkotlin/reflect/KProperty;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$dexItemMinWidth:Lkotlin/Lazy;

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$dexItemMinWidth$metadata:Lkotlin/reflect/KProperty;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$isPhone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$itemWidth:Lkotlin/Lazy;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$itemWidth$metadata:Lkotlin/reflect/KProperty;

    :goto_0
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$dexItemMinWidth:Lkotlin/Lazy;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->$dexItemMinWidth$metadata:Lkotlin/reflect/KProperty;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$multiWindowItemWidth$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
