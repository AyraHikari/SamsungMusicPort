.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 22
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    :goto_0
    return-object p1
.end method
