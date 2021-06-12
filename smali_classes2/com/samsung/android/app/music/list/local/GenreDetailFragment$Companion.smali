.class public final Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/GenreDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/GenreDetailFragment;
    .locals 3

    const-string v0, "genreName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;-><init>()V

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_genre_name"

    .line 196
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_title"

    .line 197
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
