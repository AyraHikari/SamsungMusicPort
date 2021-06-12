.class public final Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;
    .locals 3

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;-><init>()V

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_keyword"

    .line 168
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_group_type"

    .line 169
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
