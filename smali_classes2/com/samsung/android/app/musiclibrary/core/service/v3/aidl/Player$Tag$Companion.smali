.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;

.field public static final EMPTY:Ljava/lang/String; = "empty"

.field public static final MUSIC:Ljava/lang/String; = "music"

.field public static final RADIO:Ljava/lang/String; = "radio"

.field public static final SPOTIFY:Ljava/lang/String; = "spotify"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
