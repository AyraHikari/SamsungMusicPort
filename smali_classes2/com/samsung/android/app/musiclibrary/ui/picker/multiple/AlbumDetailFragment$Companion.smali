.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JZ)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;
    .locals 3

    .line 121
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;-><init>()V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_sound_picker"

    .line 123
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "key_albumId"

    .line 124
    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
