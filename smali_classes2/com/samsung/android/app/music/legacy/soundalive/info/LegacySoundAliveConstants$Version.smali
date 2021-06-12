.class public Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FX"

    .line 27
    sget-object v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$Version;->a:Z

    const-string v0, "40"

    .line 32
    sget-object v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$Version;->b:Z

    return-void
.end method
