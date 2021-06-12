.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PagerAdapter"
.end annotation


# instance fields
.field private final a:[Landroid/support/v4/app/Fragment;


# direct methods
.method public varargs constructor <init>(Landroid/support/v4/app/FragmentManager;[Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;->a:[Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;->a:[Landroid/support/v4/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$PagerAdapter;->a:[Landroid/support/v4/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
