.class public Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$PlayerState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$PlayerState$Def;
    }
.end annotation


# static fields
.field public static final GOING_TO_IDLE:I = 0x2

.field public static final IDLE:I = 0x1

.field public static final PREPARED:I = 0x4

.field public static final PREPARING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
