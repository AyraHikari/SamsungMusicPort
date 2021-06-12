.class public Lcom/markany/drm/xsync/xsyncmoduleJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "xsync_server"

    .line 355
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XSync25 library failed to load. (libxsync_server.so) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native DRMArchiveEnum_GetName(JLcom/markany/drm/xsync/DRMArchiveEnum;)Ljava/lang/String;
.end method

.method public static final native DRMArchiveEnum_Next(JLcom/markany/drm/xsync/DRMArchiveEnum;)Z
.end method

.method public static final native DRMArchiveEnum_Reset(JLcom/markany/drm/xsync/DRMArchiveEnum;)V
.end method

.method public static final native DRMArchive_Allocate(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;J)I
.end method

.method public static final native DRMArchive_Close(JLcom/markany/drm/xsync/DRMArchive;)V
.end method

.method public static final native DRMArchive_CloseArchive(JLcom/markany/drm/xsync/DRMArchive;)V
.end method

.method public static final native DRMArchive_CloseList(JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/DRMArchiveEnum;)V
.end method

.method public static final native DRMArchive_CreateArchive__SWIG_0(Ljava/lang/String;)J
.end method

.method public static final native DRMArchive_CreateArchive__SWIG_1()J
.end method

.method public static final native DRMArchive_Defrag(JLcom/markany/drm/xsync/DRMArchive;)I
.end method

.method public static final native DRMArchive_DefragMinimum(JLcom/markany/drm/xsync/DRMArchive;)I
.end method

.method public static final native DRMArchive_Delete(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z
.end method

.method public static final native DRMArchive_Exists(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z
.end method

.method public static final native DRMArchive_GetAllocatedSize(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J
.end method

.method public static final native DRMArchive_GetCustomData(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;[B)I
.end method

.method public static final native DRMArchive_GetCustomDataLength(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J
.end method

.method public static final native DRMArchive_GetCustomDataString(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMArchive_GetCustomMaxSize(JLcom/markany/drm/xsync/DRMArchive;)J
.end method

.method public static final native DRMArchive_GetLastModifiedTimeStamp(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public static final native DRMArchive_GetList(JLcom/markany/drm/xsync/DRMArchive;)J
.end method

.method public static final native DRMArchive_GetMaxSize(JLcom/markany/drm/xsync/DRMArchive;)Ljava/math/BigInteger;
.end method

.method public static final native DRMArchive_GetSize(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J
.end method

.method public static final native DRMArchive_GetTotalAllocatedSize(JLcom/markany/drm/xsync/DRMArchive;)Ljava/math/BigInteger;
.end method

.method public static final native DRMArchive_GetTotalSize(JLcom/markany/drm/xsync/DRMArchive;)Ljava/math/BigInteger;
.end method

.method public static final native DRMArchive_IsIncompleted(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z
.end method

.method public static final native DRMArchive_IsOpened(JLcom/markany/drm/xsync/DRMArchive;)Z
.end method

.method public static final native DRMArchive_New(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)I
.end method

.method public static final native DRMArchive_Open__SWIG_0(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static final native DRMArchive_Open__SWIG_1(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMArchive_SetCustomData(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;[B)I
.end method

.method public static final native DRMArchive_SetCustomDataString(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMArchive_SetMaxSize(JLcom/markany/drm/xsync/DRMArchive;Ljava/math/BigInteger;)V
.end method

.method public static final native DRMArchive_UpdateDate(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z
.end method

.method public static final native DRMFile_Close(JLcom/markany/drm/xsync/DRMFile;)I
.end method

.method public static final native DRMFile_GetContentsLength(JLcom/markany/drm/xsync/DRMFile;)J
.end method

.method public static final native DRMFile_GetCustomData(JLcom/markany/drm/xsync/DRMFile;[B)I
.end method

.method public static final native DRMFile_GetCustomDataLength(JLcom/markany/drm/xsync/DRMFile;)I
.end method

.method public static final native DRMFile_GetFilePath(JLcom/markany/drm/xsync/DRMFile;)Ljava/lang/String;
.end method

.method public static final native DRMFile_GetLength(JLcom/markany/drm/xsync/DRMFile;)J
.end method

.method public static final native DRMFile_GetLicense(JLcom/markany/drm/xsync/DRMFile;JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native DRMFile_GetLicenseState(JLcom/markany/drm/xsync/DRMFile;)I
.end method

.method public static final native DRMFile_GetMetaData(JLcom/markany/drm/xsync/DRMFile;ILjava/lang/String;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMFile;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMFile;JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMFile;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_5(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;)I
.end method

.method public static final native DRMFile_InstallLicense__SWIG_6(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;J)I
.end method

.method public static final native DRMFile_IsDRMFile(JLcom/markany/drm/xsync/DRMFile;)Z
.end method

.method public static final native DRMFile_NeedReHeader(JLcom/markany/drm/xsync/DRMFile;)Z
.end method

.method public static final native DRMFile_ReHeader(JLcom/markany/drm/xsync/DRMFile;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMFile_Read__SWIG_0(JLcom/markany/drm/xsync/DRMFile;[B)J
.end method

.method public static final native DRMFile_Read__SWIG_1(JLcom/markany/drm/xsync/DRMFile;I[B)J
.end method

.method public static final native DRMFile_SWIGUpcast(J)J
.end method

.method public static final native DRMFile_Seek(JLcom/markany/drm/xsync/DRMFile;J)J
.end method

.method public static final native DRMFile_Tell(JLcom/markany/drm/xsync/DRMFile;)J
.end method

.method public static final native DRMFile_Write(JLcom/markany/drm/xsync/DRMFile;[B)J
.end method

.method public static final native DRMFile_getDrmType(JLcom/markany/drm/xsync/DRMFile;)I
.end method

.method public static final native DRMFile_isOpened(JLcom/markany/drm/xsync/DRMFile;)Z
.end method

.method public static final native DRMFile_isReadable(JLcom/markany/drm/xsync/DRMFile;)Z
.end method

.method public static final native DRMServer_ChangeDeviceTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native DRMServer_CheckValidDomain(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z
.end method

.method public static final native DRMServer_CloseFile(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMFile;)V
.end method

.method public static final native DRMServer_CloseSessionImpl(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)I
.end method

.method public static final native DRMServer_CloseSession__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)V
.end method

.method public static final native DRMServer_CloseSession__SWIG_1(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_DBRenewal(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_DBUpdateAllExpiryDate(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeleteExpiredLicenseAll(JLcom/markany/drm/xsync/DRMServer;I)I
.end method

.method public static final native DRMServer_DeleteLicenseByPath__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeleteLicenseByPath__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeleteLicenseByPath__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeleteLicenseByType__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native DRMServer_DeleteLicenseByType__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static final native DRMServer_DeleteLicenseByType__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeleteLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native DRMServer_DeleteLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeleteLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_DeviceIsHacked(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_GetDBDirectory(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetDBFullPath(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetDeltaTime(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetDomain(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetEncDeviceKey(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I
.end method

.method public static final native DRMServer_GetEncTimeValue(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I
.end method

.method public static final native DRMServer_GetLastErrorCode(JLcom/markany/drm/xsync/DRMServer;)I
.end method

.method public static final native DRMServer_GetLastErrorString(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native DRMServer_GetLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;Z)I
.end method

.method public static final native DRMServer_GetLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native DRMServer_GetLicense__SWIG_3(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_GetPackageName(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetRealTime(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;
.end method

.method public static final native DRMServer_GetSecureTimeFromHidden(JLcom/markany/drm/xsync/DRMServer;ZI)Z
.end method

.method public static final native DRMServer_GetState(JLcom/markany/drm/xsync/DRMServer;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;JJLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_5(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_6(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMServer_InstallLicense__SWIG_7(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_IsDBOpened(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_OpenFileReadOnly__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)J
.end method

.method public static final native DRMServer_OpenFileReadOnly__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)J
.end method

.method public static final native DRMServer_OpenFile__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)J
.end method

.method public static final native DRMServer_OpenFile__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)J
.end method

.method public static final native DRMServer_OpenFile__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;IIII)J
.end method

.method public static final native DRMServer_OpenFile__SWIG_3(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;III)J
.end method

.method public static final native DRMServer_OpenFile__SWIG_4(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J
.end method

.method public static final native DRMServer_OpenFile__SWIG_5(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native DRMServer_OpenSession__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native DRMServer_OpenSession__SWIG_1(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native DRMServer_OpenSession__SWIG_2(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_SWIGUpcast(J)J
.end method

.method public static final native DRMServer_SendErrorMsg(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMServer_SetDBDirectory(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetDBFullPath(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetDeltaTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetDeviceKey__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)V
.end method

.method public static final native DRMServer_SetDeviceKey__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Z)V
.end method

.method public static final native DRMServer_SetDomain__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetDomain__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetMimeType(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native DRMServer_SetPackageName(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetRealTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native DRMServer_SetSecureTimeToHidden(JLcom/markany/drm/xsync/DRMServer;J)Z
.end method

.method public static final native DRMServer_SetTimeOut(JLcom/markany/drm/xsync/DRMServer;II)V
.end method

.method public static final native DRMServer_SetTimeServer(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z
.end method

.method public static final native DRMServer_SetUserID(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)V
.end method

.method public static final native DRMServer_Start__SWIG_0(JLcom/markany/drm/xsync/DRMServer;I)Z
.end method

.method public static final native DRMServer_Start__SWIG_1(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_Start__SWIG_2(JLcom/markany/drm/xsync/DRMServer;II)Z
.end method

.method public static final native DRMServer_Stop(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_UpdateSecureTime(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_UpdateTime__SWIG_0(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_UpdateTime__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z
.end method

.method public static final native DRMServer_getUserCypherModule(JLcom/markany/drm/xsync/DRMServer;)J
.end method

.method public static final native DRMServer_isDBOpened(JLcom/markany/drm/xsync/DRMServer;)Z
.end method

.method public static final native DRMServer_setUserCypherModule(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/UserCypherModuleCallBack;)V
.end method

.method public static final native DRMServer_split(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JJ)I
.end method

.method public static final native DRMServer_stringToTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native DRMSessionCallBack_OnError(JLcom/markany/drm/xsync/DRMSessionCallBack;ILjava/lang/String;)Z
.end method

.method public static final native DRMSessionCallBack_OnLicenseRequired(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native DRMSessionCallBack_OnLicenseRequiredSwigExplicitDRMSessionCallBack(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native DRMSessionCallBack_OnNewConnection(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMSession;)Z
.end method

.method public static final native DRMSessionCallBack_OnTimeUpdateRequired(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)Z
.end method

.method public static final native DRMSessionCallBack_OnTimeUpdateRequiredSwigExplicitDRMSessionCallBack(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)Z
.end method

.method public static final native DRMSessionCallBack_change_ownership(Lcom/markany/drm/xsync/DRMSessionCallBack;JZ)V
.end method

.method public static final native DRMSessionCallBack_director_connect(Lcom/markany/drm/xsync/DRMSessionCallBack;JZZ)V
.end method

.method public static final native DRMSession_GetCallBack(JLcom/markany/drm/xsync/DRMSession;)J
.end method

.method public static final native DRMSession_GetCustomData(JLcom/markany/drm/xsync/DRMSession;[B)I
.end method

.method public static final native DRMSession_GetCustomDataLength(JLcom/markany/drm/xsync/DRMSession;)I
.end method

.method public static final native DRMSession_GetLicense(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native DRMSession_GetPackageName(JLcom/markany/drm/xsync/DRMSession;)Ljava/lang/String;
.end method

.method public static final native DRMSession_GetSourceUrl(JLcom/markany/drm/xsync/DRMSession;)Ljava/lang/String;
.end method

.method public static final native DRMSession_GetUrl(JLcom/markany/drm/xsync/DRMSession;)Ljava/lang/String;
.end method

.method public static final native DRMSession_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
.end method

.method public static final native DRMSession_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native DRMSession_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMSession;)I
.end method

.method public static final native DRMSession_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
.end method

.method public static final native DRMSession_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;J)I
.end method

.method public static final native DRMSession_IsDRMFile(JLcom/markany/drm/xsync/DRMSession;)Z
.end method

.method public static final native DRMSession_IsLocalFile(JLcom/markany/drm/xsync/DRMSession;)Z
.end method

.method public static final native DRMSession_SWIGUpcast(J)J
.end method

.method public static final native DRMSession_SetCallBack(JLcom/markany/drm/xsync/DRMSession;JLcom/markany/drm/xsync/DRMSessionCallBack;)V
.end method

.method public static final native DRMSession_StartBackgroundThread(JLcom/markany/drm/xsync/DRMSession;)V
.end method

.method public static final native DRMSession_isOpened(JLcom/markany/drm/xsync/DRMSession;)Z
.end method

.method public static final native DownloadCallBack_OnBegin(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;J)V
.end method

.method public static final native DownloadCallBack_OnEnd(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;J)V
.end method

.method public static final native DownloadCallBack_OnError(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;JILjava/lang/String;)Z
.end method

.method public static final native DownloadCallBack_OnReceive(JLcom/markany/drm/xsync/DownloadCallBack;JLcom/markany/drm/xsync/Downloader;JII)Z
.end method

.method public static final native DownloadCallBack_change_ownership(Lcom/markany/drm/xsync/DownloadCallBack;JZ)V
.end method

.method public static final native DownloadCallBack_director_connect(Lcom/markany/drm/xsync/DownloadCallBack;JZZ)V
.end method

.method public static final native DownloadInfo_GetArchive(JLcom/markany/drm/xsync/DownloadInfo;)J
.end method

.method public static final native DownloadInfo_GetConnectionType(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;
.end method

.method public static final native DownloadInfo_GetContentSize(JLcom/markany/drm/xsync/DownloadInfo;)J
.end method

.method public static final native DownloadInfo_GetDownloadedSize(JLcom/markany/drm/xsync/DownloadInfo;)J
.end method

.method public static final native DownloadInfo_GetID(JLcom/markany/drm/xsync/DownloadInfo;)J
.end method

.method public static final native DownloadInfo_GetPostData(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;
.end method

.method public static final native DownloadInfo_GetSavePath(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;
.end method

.method public static final native DownloadInfo_GetUrl(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;
.end method

.method public static final native DownloadInfo_IsCanceled(JLcom/markany/drm/xsync/DownloadInfo;)Z
.end method

.method public static final native DownloadInfo_IsEnded(JLcom/markany/drm/xsync/DownloadInfo;)Z
.end method

.method public static final native Downloader_AddDownloadFirst__SWIG_0(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J
.end method

.method public static final native Downloader_AddDownloadFirst__SWIG_1(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J
.end method

.method public static final native Downloader_AddDownload__SWIG_0(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J
.end method

.method public static final native Downloader_AddDownload__SWIG_1(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J
.end method

.method public static final native Downloader_CancelRequest(JLcom/markany/drm/xsync/Downloader;J)V
.end method

.method public static final native Downloader_Clear(JLcom/markany/drm/xsync/Downloader;)V
.end method

.method public static final native Downloader_Close(JLcom/markany/drm/xsync/Downloader;)V
.end method

.method public static final native Downloader_CloseDownloader(JLcom/markany/drm/xsync/Downloader;)V
.end method

.method public static final native Downloader_CreateDownloader__SWIG_0(J)J
.end method

.method public static final native Downloader_CreateDownloader__SWIG_1(JLjava/lang/String;)J
.end method

.method public static final native Downloader_GetCurrentRequestID(JLcom/markany/drm/xsync/Downloader;)J
.end method

.method public static final native Downloader_GetDownloadInfo(JLcom/markany/drm/xsync/Downloader;J)J
.end method

.method public static final native Downloader_SWIGUpcast(J)J
.end method

.method public static final native Downloader_SetTimeOut(JLcom/markany/drm/xsync/Downloader;II)V
.end method

.method public static final native E_DRM_ENUM_COUNT_get()I
.end method

.method public static final native E_DRM_MIN_get()I
.end method

.method public static final native FALSE_get()I
.end method

.method public static final native GetCustomData(Ljava/lang/String;[B)I
.end method

.method public static final native GetCustomDataLength(Ljava/lang/String;)I
.end method

.method public static final native GetXSyncErrStr(I)Ljava/lang/String;
.end method

.method public static final native GetXSyncLicenseType(I)Ljava/lang/String;
.end method

.method public static final native GetXSyncRevision()Ljava/lang/String;
.end method

.method public static final native GetXSyncVersion()Ljava/lang/String;
.end method

.method public static final native InvalidRequestID_get()J
.end method

.method public static final native InvalidTime_get()J
.end method

.method public static final native InvalidTime_set(JLcom/markany/drm/xsync/Time;)V
.end method

.method public static final native LICENSERESULT_ST_DESCRIPTION_LEN_get()I
.end method

.method public static final native LICENSERESULT_ST_RESULT_LEN_get()I
.end method

.method public static final native LICENSE_ACQ_METHOD_NOT_CALLED_get()I
.end method

.method public static final native LICENSE_EXPIRED_get()I
.end method

.method public static final native LICENSE_INVALID_DEVICE_KEY_get()I
.end method

.method public static final native LICENSE_INVALID_DOMAIN_get()I
.end method

.method public static final native LICENSE_INVALID_TERM_get()I
.end method

.method public static final native LICENSE_INVALID_UID_get()I
.end method

.method public static final native LICENSE_INVALID_VERSION_get()I
.end method

.method public static final native LICENSE_INVALID_get()I
.end method

.method public static final native LICENSE_IS_NOT_DRM_FILE_get()I
.end method

.method public static final native LICENSE_NO_get()I
.end method

.method public static final native LICENSE_ROLLBACK_get()I
.end method

.method public static final native LICENSE_TERM_NOT_YET_STARTED_get()I
.end method

.method public static final native LICENSE_TERM_get()I
.end method

.method public static final native LICENSE_UNLIMITED_get()I
.end method

.method public static final native LicenseData_ArtistURL_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_CID_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Count_get(JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native LicenseData_Creation_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Description_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_DeviceKey_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Domain_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Encrypted_get(JLcom/markany/drm/xsync/LicenseData;)Z
.end method

.method public static final native LicenseData_EndDate_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_LAURL_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_LID_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_LastModified_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_LicenseType_get(JLcom/markany/drm/xsync/LicenseData;)I
.end method

.method public static final native LicenseData_Publisher_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Readable_get(JLcom/markany/drm/xsync/LicenseData;)Z
.end method

.method public static final native LicenseData_Release_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_StartDate_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Title_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_UID_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseData_Version_get(JLcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
.end method

.method public static final native LicenseResult_Description_get(JLcom/markany/drm/xsync/LicenseResult;)Ljava/lang/String;
.end method

.method public static final native LicenseResult_Result_get(JLcom/markany/drm/xsync/LicenseResult;)Ljava/lang/String;
.end method

.method public static final native LicenseResult_errCode_get(JLcom/markany/drm/xsync/LicenseResult;)I
.end method

.method public static final native NULL_get()I
.end method

.method public static SwigDirector_DRMSessionCallBack_OnError(Lcom/markany/drm/xsync/DRMSessionCallBack;ILjava/lang/String;)Z
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/markany/drm/xsync/DRMSessionCallBack;->OnError(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_DRMSessionCallBack_OnLicenseRequired(Lcom/markany/drm/xsync/DRMSessionCallBack;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    move-object v10, v5

    goto :goto_0

    .line 322
    :cond_0
    new-instance v8, Lcom/markany/drm/xsync/DRMServer;

    invoke-direct {v8, v0, v1, v4}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    move-object v10, v8

    :goto_0
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    :goto_1
    move-object v11, v5

    goto :goto_2

    :cond_1
    new-instance v5, Lcom/markany/drm/xsync/DRMSession;

    invoke-direct {v5, v2, v3, v4}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    goto :goto_1

    :goto_2
    move-object v9, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v9 .. v14}, Lcom/markany/drm/xsync/DRMSessionCallBack;->OnLicenseRequired(Lcom/markany/drm/xsync/DRMServer;Lcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static SwigDirector_DRMSessionCallBack_OnNewConnection(Lcom/markany/drm/xsync/DRMSessionCallBack;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMSession;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/markany/drm/xsync/DRMSessionCallBack;->OnNewConnection(Lcom/markany/drm/xsync/DRMSession;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_DRMSessionCallBack_OnTimeUpdateRequired(Lcom/markany/drm/xsync/DRMSessionCallBack;JJ)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 325
    :cond_0
    new-instance v4, Lcom/markany/drm/xsync/DRMServer;

    invoke-direct {v4, p1, p2, v0}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    :goto_0
    cmp-long p1, p3, v2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/markany/drm/xsync/DRMSession;

    invoke-direct {v1, p3, p4, v0}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/markany/drm/xsync/DRMSessionCallBack;->OnTimeUpdateRequired(Lcom/markany/drm/xsync/DRMServer;Lcom/markany/drm/xsync/DRMSession;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_DownloadCallBack_OnBegin(Lcom/markany/drm/xsync/DownloadCallBack;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 328
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/markany/drm/xsync/DownloadCallBack;->OnBegin(Lcom/markany/drm/xsync/Downloader;J)V

    return-void
.end method

.method public static SwigDirector_DownloadCallBack_OnEnd(Lcom/markany/drm/xsync/DownloadCallBack;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 337
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/markany/drm/xsync/DownloadCallBack;->OnEnd(Lcom/markany/drm/xsync/Downloader;J)V

    return-void
.end method

.method public static SwigDirector_DownloadCallBack_OnError(Lcom/markany/drm/xsync/DownloadCallBack;JJILjava/lang/String;)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    move-object v3, p1

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    move-object v3, v0

    :goto_0
    move-object v2, p0

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/markany/drm/xsync/DownloadCallBack;->OnError(Lcom/markany/drm/xsync/Downloader;JILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_DownloadCallBack_OnReceive(Lcom/markany/drm/xsync/DownloadCallBack;JJII)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    move-object v3, p1

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    move-object v3, v0

    :goto_0
    move-object v2, p0

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/markany/drm/xsync/DownloadCallBack;->OnReceive(Lcom/markany/drm/xsync/Downloader;JII)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_UserCypherModuleCallBack_DecString(Lcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->DecString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_UserCypherModuleCallBack_EncString(Lcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->EncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_UserCypherModuleCallBack_GetEncDeviceKey(Lcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->GetEncDeviceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_UserCypherModuleCallBack_GetEncTimeValue(Lcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->GetEncTimeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final native TRUE_get()Z
.end method

.method public static final native Time_day_get(JLcom/markany/drm/xsync/Time;)I
.end method

.method public static final native Time_day_set(JLcom/markany/drm/xsync/Time;I)V
.end method

.method public static final native Time_hour_get(JLcom/markany/drm/xsync/Time;)I
.end method

.method public static final native Time_hour_set(JLcom/markany/drm/xsync/Time;I)V
.end method

.method public static final native Time_minute_get(JLcom/markany/drm/xsync/Time;)I
.end method

.method public static final native Time_minute_set(JLcom/markany/drm/xsync/Time;I)V
.end method

.method public static final native Time_month_get(JLcom/markany/drm/xsync/Time;)I
.end method

.method public static final native Time_month_set(JLcom/markany/drm/xsync/Time;I)V
.end method

.method public static final native Time_sec_get(JLcom/markany/drm/xsync/Time;)I
.end method

.method public static final native Time_sec_set(JLcom/markany/drm/xsync/Time;I)V
.end method

.method public static final native Time_year_get(JLcom/markany/drm/xsync/Time;)I
.end method

.method public static final native Time_year_set(JLcom/markany/drm/xsync/Time;I)V
.end method

.method public static final native UserCypherModuleCallBack_DecString(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native UserCypherModuleCallBack_EncString(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native UserCypherModuleCallBack_GetEncDeviceKey(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native UserCypherModuleCallBack_GetEncTimeValue(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native UserCypherModuleCallBack_change_ownership(Lcom/markany/drm/xsync/UserCypherModuleCallBack;JZ)V
.end method

.method public static final native UserCypherModuleCallBack_director_connect(Lcom/markany/drm/xsync/UserCypherModuleCallBack;JZZ)V
.end method

.method public static final native XSyncFileHeaderCheck__SWIG_0(Ljava/lang/String;)I
.end method

.method public static final native XSyncFileHeaderCheck__SWIG_1(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)I
.end method

.method public static final native copy_intp(I)J
.end method

.method public static final native delete_DRMArchive(J)V
.end method

.method public static final native delete_DRMArchiveEnum(J)V
.end method

.method public static final native delete_DRMFile(J)V
.end method

.method public static final native delete_DRMServer(J)V
.end method

.method public static final native delete_DRMSession(J)V
.end method

.method public static final native delete_DRMSessionCallBack(J)V
.end method

.method public static final native delete_DownloadCallBack(J)V
.end method

.method public static final native delete_DownloadInfo(J)V
.end method

.method public static final native delete_Downloader(J)V
.end method

.method public static final native delete_LicenseData(J)V
.end method

.method public static final native delete_LicenseResult(J)V
.end method

.method public static final native delete_NonCopyable(J)V
.end method

.method public static final native delete_Time(J)V
.end method

.method public static final native delete_UserCypherModuleCallBack(J)V
.end method

.method public static final native delete_intp(J)V
.end method

.method public static final native intp_assign(JI)V
.end method

.method public static final native intp_value(J)I
.end method

.method public static final native new_DRMServer__SWIG_0(Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method public static final native new_DRMServer__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_DRMServer__SWIG_2(Ljava/lang/String;)J
.end method

.method public static final native new_DRMSessionCallBack()J
.end method

.method public static final native new_DownloadCallBack()J
.end method

.method public static final native new_LicenseData()J
.end method

.method public static final native new_LicenseResult()J
.end method

.method public static final native new_NonCopyable()J
.end method

.method public static final native new_Time()J
.end method

.method public static final native new_UserCypherModuleCallBack()J
.end method

.method public static final native new_intp()J
.end method

.method private static final native swig_module_init()V
.end method
