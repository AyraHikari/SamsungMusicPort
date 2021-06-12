.class public Lcom/samsung/android/app/music/model/AudioQuality$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/AudioQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/AudioQuality$Type$Def;
    }
.end annotation


# static fields
.field public static final AAC:Ljava/lang/String; = "A"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final M4A_96:Ljava/lang/String; = "B"

.field public static final MP3_192:Ljava/lang/String; = "M"

.field public static final MP3_320:Ljava/lang/String; = "L"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
