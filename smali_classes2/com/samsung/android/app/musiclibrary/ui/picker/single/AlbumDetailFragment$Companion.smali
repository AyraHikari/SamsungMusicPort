.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;
    .locals 3

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_albumId"

    .line 82
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "args_audio_id"

    .line 83
    invoke-virtual {v1, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
