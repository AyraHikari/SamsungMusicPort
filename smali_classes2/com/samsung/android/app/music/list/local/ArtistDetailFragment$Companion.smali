.class public final Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)I
    .locals 0

    .line 337
    invoke-static {p1}, Lkotlin/text/StringsKt;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;
    .locals 3

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;-><init>()V

    .line 327
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_keyword"

    .line 328
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_title"

    .line 329
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_group_type"

    if-eqz p3, :cond_0

    .line 330
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;->a(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
