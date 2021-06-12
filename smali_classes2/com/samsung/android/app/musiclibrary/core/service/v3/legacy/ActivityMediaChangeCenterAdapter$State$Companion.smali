.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;

.field public static final PAUSE:I = 0x3

.field public static final RESUME:I = 0x4

.field public static final START:I = 0x2

.field public static final STOP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isStarted$musicLibrary_release(I)Z
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
