.class public Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchSortItem"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;->a:I

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;->b:Ljava/lang/String;

    return-void
.end method
