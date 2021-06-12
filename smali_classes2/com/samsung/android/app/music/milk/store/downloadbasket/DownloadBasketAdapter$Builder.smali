.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 p1, -0x1

    .line 137
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 0

    .line 160
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->e:I

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->f()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->a:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->f()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1

    const-string v0, "price"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->b:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->c:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->f()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->d:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->f()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->g()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->e:I

    return v0
.end method

.method protected f()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public g()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    .locals 1

    .line 165
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->f()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
