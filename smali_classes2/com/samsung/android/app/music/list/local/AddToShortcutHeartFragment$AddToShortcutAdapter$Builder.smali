.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;",
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

    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->a:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->b:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;
    .locals 1

    .line 250
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
