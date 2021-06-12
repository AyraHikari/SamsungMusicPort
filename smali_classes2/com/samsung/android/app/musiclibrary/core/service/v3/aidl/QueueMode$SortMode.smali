.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SortMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ARTIST:I = 0x4

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;

.field public static final DEFAULT:I = 0x1

.field public static final DEVICE:I = 0x5

.field public static final MINE:I = 0x1

.field public static final RECENTLY:I = 0x2

.field public static final TITLE:I = 0x3

.field public static final UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;

    return-void
.end method
