.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;

    return-void
.end method

.method public static final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object p0

    return-object p0
.end method
