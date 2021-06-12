.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$Priority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$Priority$Def;
    }
.end annotation


# static fields
.field public static final PLAY_CURRENT:I = 0x1

.field public static final PLAY_NEXT:I = 0x2

.field public static final TEMPORARY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
