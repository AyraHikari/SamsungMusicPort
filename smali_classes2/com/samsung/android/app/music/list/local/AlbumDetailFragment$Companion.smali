.class public final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 459
    check-cast p4, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    .locals 3

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;-><init>()V

    .line 462
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_album_id"

    .line 463
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "key_title"

    .line 464
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p1, "key_transition_name"

    .line 465
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
