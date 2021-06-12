.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$EnqueueAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnqueueAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$EnqueueAction$Action;
    }
.end annotation


# static fields
.field public static final FIRST:I = 0x1

.field public static final LAST:I = 0x4

.field public static final NEW:I = 0x5

.field public static final NEXT:I = 0x3

.field public static final NOW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
