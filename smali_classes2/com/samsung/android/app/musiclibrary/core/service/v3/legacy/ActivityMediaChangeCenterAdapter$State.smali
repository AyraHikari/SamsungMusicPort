.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;

.field public static final PAUSE:I = 0x3

.field public static final RESUME:I = 0x4

.field public static final START:I = 0x2

.field public static final STOP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$State$Companion;

    return-void
.end method
