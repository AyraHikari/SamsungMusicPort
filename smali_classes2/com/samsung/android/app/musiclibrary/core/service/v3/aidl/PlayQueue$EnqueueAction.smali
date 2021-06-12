.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EnqueueAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction$Companion;

.field public static final FIRST:I = 0x1

.field public static final LAST:I = 0x4

.field public static final NEW:I = 0x5

.field public static final NEXT:I = 0x3

.field public static final NOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction$Companion;

    return-void
.end method
