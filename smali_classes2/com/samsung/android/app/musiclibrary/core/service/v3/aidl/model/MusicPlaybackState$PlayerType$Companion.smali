.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType$Companion;

.field public static final DMR_PLAYER:I = 0x2

.field public static final MEDIA_PLAYER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$PlayerType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
