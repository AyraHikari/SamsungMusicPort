.class public Lcom/samsung/android/app/music/model/AudioQuality$Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/AudioQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Codec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/AudioQuality$Codec$Def;
    }
.end annotation


# static fields
.field public static final AAC:Ljava/lang/String; = "aac"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final M4A:Ljava/lang/String; = "m4a"

.field public static final MP3:Ljava/lang/String; = "mp3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
