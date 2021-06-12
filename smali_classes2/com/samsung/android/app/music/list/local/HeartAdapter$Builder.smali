.class public final Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->a:Ljava/lang/String;

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->b:Ljava/lang/String;

    .line 1133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/HeartAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/list/local/HeartAdapter;
    .locals 1

    .line 1123
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;-><init>(Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
