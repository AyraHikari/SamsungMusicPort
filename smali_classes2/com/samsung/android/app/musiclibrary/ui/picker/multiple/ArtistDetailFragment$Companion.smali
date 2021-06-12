.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JZ)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;
    .locals 3

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;-><init>()V

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_sound_picker"

    .line 124
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "key_artist_id"

    .line 125
    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
